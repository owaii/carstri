function loadScript(src, defer = false) {
    const script = document.createElement('script');
    script.src = src;
    if (defer) script.defer = true;
    document.head.appendChild(script);
}

function loadStyles(href) {
    const link = document.createElement('link');
    link.rel = 'stylesheet';
    link.href = href;
    document.head.appendChild(link);
}

/* scripts */
loadScript('https://cdn.tailwindcss.com');
loadScript('https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js', true);
loadScript('./splide/splide.min.js');

/* styles */
loadStyles('./splide/splide.min.css');
loadStyles('https://fonts.googleapis.com/css2?family=JetBrains+Mono&display=swap');