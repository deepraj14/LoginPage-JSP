document.getElementById("email").onchange=function(e)
{
	localStorage.setItem("email",e.target.value);
}
window.onload=function()
{
	document.getElementById("email").value=localStorage.getItem("email")
	
}
