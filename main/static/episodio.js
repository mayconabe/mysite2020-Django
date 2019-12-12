
var player = document.querySelector('.player');
var video = document.getElementById('video');
var fsButton = document.getElementById('fs');

fsButton.addEventListener('click', () => {
	if (document.webkitIsFullScreen) {
		player.classList.remove('is-fullscreen');
		document.webkitCancelFullScreen();
		return;
	}
	
	player.classList.add('is-fullscreen');
	player.webkitRequestFullScreen();
});
