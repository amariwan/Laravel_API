import "./bootstrap";
import "../css/app.css";
import React from "react";
import { createRoot } from "react-dom/client"; // Corrected import
import { createInertiaApp } from "@inertiajs/inertia-react";
import { InertiaProgress } from "@inertiajs/progress";
import { resolvePageComponent } from "laravel-vite-plugin/inertia-helpers";

const appName =
    window.document.getElementsByTagName("title")[0]?.innerText || "Laravel";

(async () => {
    console.log("Glob result:", await import.meta.glob("../Pages/**/*.jsx"));

    createInertiaApp({
        title: (title) => `${title} - ${appName}`,
        resolve: async (name) => {
            console.log("Resolving:", name);
            const pageComponent = await resolvePageComponent(
                `../Pages/${name}.jsx`,
                await import.meta.glob("../Pages/**/*.jsx")
            );
            return pageComponent.default;
        },
        setup({ el, App, props }) {
            createRoot(el).render(<App {...props} />);
        },
    });

    InertiaProgress.init({ color: "#4B5563" });
})();
