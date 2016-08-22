package com.server.career.util;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.commons.lang.StringUtils;

/**
 * SqlFileReader.
 *
 * @author manhcuong
 */
public class SqlFileReaderUtil {

	private static ConcurrentHashMap<String, String> sqlMap = new ConcurrentHashMap<String, String>();

	private static final String SQL_FILE_BASE_PATH = "META-INF/sql/";
	private static final String ENCODE = "UTF-8";
	private static int READ_BYTE = 1024;
	private static char BOM = '\uFEFF';

	/**
	 * Sql file is read from classpath.
	 *
	 * @param path
	 *            sql file
	 * @return sql string
	 * @throws IOException
	 */
	public static String getSql(String path) throws IOException {

		if (!path.endsWith(".sql")) {
			path = path + ".sql";
		}
		String sql = null;
		sql = sqlMap.get(path);
		if (!StringUtils.isEmpty(sql)) {
			return sql;
		}
		sql = readSqlFile(SQL_FILE_BASE_PATH + path);
		if (!StringUtils.isEmpty(sql)) {
			String current = sqlMap.putIfAbsent(path, sql);
			return current != null ? current : sql;
		}
		throw new IOException(path + ":failed to fetch Sql from this file.");
	}

	/**
	 * Sql繝輔ぃ繧､繝ｫ縺ｮ隱ｭ縺ｿ霎ｼ縺ｿ蜃ｦ逅�.
	 *
	 * @param path
	 * @return
	 * @throws IOException
	 */
	private static String readSqlFile(String path) throws IOException {

		ClassLoader loader = Thread.currentThread().getContextClassLoader();
		InputStream is = null;
		Reader reader = null;
		BufferedReader br = null;
		String sql = "";
		try {
			StringBuilder sb = new StringBuilder(READ_BYTE);
			is = loader.getResourceAsStream(path);
			if (is == null) {
				return null;
			}
			reader = new InputStreamReader(is, ENCODE);
			br = new BufferedReader(reader);
			char[] buf = new char[READ_BYTE];
			int n;
			while ((n = br.read(buf)) >= 0) {
				sb.append(buf, 0, n);
			}
			sql = sb.toString();

		} finally {
			// close file
			closeStream(br);
			closeStream(reader);
			closeStream(is);
		}

		// delete of BOM
		if (sql.length() > 0 && sql.charAt(0) == BOM) {
			sql = sql.substring(1);
		}

		return sql;
	}

	/**
	 * Stream縺ｮclose蜃ｦ逅�.
	 *
	 * @param cl
	 *            close蟇ｾ雎｡縺ｮresource
	 */
	private static void closeStream(Closeable cl) {
		try {
			if (cl != null) {
				cl.close();
			}
		} catch (Exception e) {
		}
	}
}
