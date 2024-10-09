function loadScript(src, defer = false) {
    const script = document.createElement('script');
    script.src = src;
    if (defer) {
        script.defer = true;
    }
    document.head.appendChild(script);
}

function loadStyle(href) {
    const link = document.createElement('link');
    link.rel = 'stylesheet';
    link.href = href;
    document.head.appendChild(link);
}

loadScript('https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js', true);
loadScript('https://cdn.tailwindcss.com');
loadScript('carstri/splide/splide.min.js');
loadStyle('carstri/splide/splide.min.css');