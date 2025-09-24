const routes = {
    "/" : "fragments/home",
    "/about-us" : "fragments/about-us"
}

const app = document.getElementById("main-con");

async function render(route) {
    const fragment = routes[route] || routes["/"];
    const url = fragment;

    try {
        const res = await fetch(url);
        if (!res.ok) throw new Error(res.status);
        app.innerHTML = await res.text();

        const normalized = (route in routes) ? route : "/";
        setActiveLink(normalized);

        document.dispatchEvent(new CustomEvent("route:loaded", {detail: { route: normalized}}));
        window.scrollTo({ top: 0, behavior: "instant"});
    } catch (error) {
        app.innerHTML = "<h2 style='padding:24px'>페이지를 불러오지 못했습니다.</h2>";
        console.error(e);
    }

}

function setActiveLink(route) {
    document.querySelectorAll(".nav-link").forEach(link => {
        link.classList.toggle("is-active", link.dataset.route == route);
    });
}

document.addEventListener("click", (e) => {
    if (e.metaKey || e.ctrlKey || e.shiftKey || e.button === 1) return;

    const routeEl = e.target.closest("[data-route]");
    if (!routeEl) return;

    const to = routeEl.dataset.route;
    if (!to) return;

    if (/^https?:\/\//.test(to)) {
        window.open(to, "_blank", "noopener");
        e.preventDefault();
        return;
    }

    if (to === window.location.pathname) {
        e.preventDefault();
        return;
    }
});

window.addEventListener("popstate", (e) => {
    const route = (e.state && e.state.route) || window.location.pathname;
    render(route in routes ? route : "/");
});

document.addEventListener("DOMContentLoaded", () => {
    const current = window.location.pathname;
    render(current in routes ? current : "/");
})
