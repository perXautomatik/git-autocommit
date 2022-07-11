Array.prototype.forEach.call(document.querySelectorAll("td.chartlist-album > a"), function(el) {
el.childNodes[0].data = (el.href.split('/')[4]+'/'+el.title) })