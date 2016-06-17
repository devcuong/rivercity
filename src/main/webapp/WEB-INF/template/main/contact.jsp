<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="comments" itemscope
	itemtype="http://schema.org/UserComments">
	<div id="respond" class="comment-respond">
		<h3 id="reply-title" class="comment-reply-title">
			Leave a Reply <small><a rel="nofollow"
				id="cancel-comment-reply-link"
				href="http://quangcaohieuqua.net//gioi-thieu/#respond"
				style="display: none;">Cancel reply</a></small>
		</h3>
		<form action="http://quangcaohieuqua.net/wp-comments-post.php"
			method="post" id="commentform" class="comment-form">
			<p class="comment-notes">
				<span id="email-notes">Your email address will not be
					published.</span> Required fields are marked <span class="required">*</span>
			</p>
			<p class="comment-form-author">
				<label for="author">Name <span class="required">*</span></label> <input
					id="author" name="author" type="text" value="" size="30"
					aria-required='true' required='required' />
			</p>
			<p class="comment-form-email">
				<label for="email">Email <span class="required">*</span></label> <input
					id="email" name="email" type="text" value="" size="30"
					aria-describedby="email-notes" aria-required='true'
					required='required' />
			</p>
			<p class="comment-form-url">
				<label for="url">Website</label> <input id="url" name="url"
					type="text" value="" size="30" />
			</p>
			<p class="comment-form-comment">
				<label for="comment">Comment</label>
				<textarea id="comment" name="comment" cols="45" rows="8"
					aria-describedby="form-allowed-tags" aria-required="true"
					required="required"></textarea>
			</p>
			<p class="form-submit">
				<input name="submit" type="submit" id="submit" class="submit"
					value="Post Comment" /> <input type='hidden'
					name='comment_post_ID' value='2' id='comment_post_ID' /> <input
					type='hidden' name='comment_parent' id='comment_parent' value='0' />
			</p>
		</form>
	</div>
	<!-- #respond -->
</section>