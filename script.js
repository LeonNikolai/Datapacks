import {html, render } from 'https://unpkg.com/lit-html?module'
import {unsafeHTML} from 'https://unpkg.com/lit-html/directives/unsafe-html.js?module';

const setFilter = e => {filter = e.currenttarget.value; render(datapacks, document.getElementById("render"))};

let projectJson = []

window.addEventListener('load', (e) => {
    fetch("projects.json").then(response => response.json()).then(json => {projectJson = json.projects || projectJson; renderlist()});
    document.querySelectorAll(".filter").forEach(e => e.addEventListener('input', e => renderlist(e.target.value)))
});

const renderlist = (filter = 'all') => {
    let projects = projectJson.slice();
    projects = filter == 'all' ? projects : projects.filter(e  => e.type == filter);
    projects = projects.map((e,i) => unsafeHTML(`
        <li class='list-item' style="animation-delay: ${.1*i}s">
            <div class="list-item-image">
                ${e.preview != undefined ? `<img alt="preview image" src=${e.preview}></img>` : ' '}
            </div>
            <button class="list-item-version"><span class="hover">${e.version || ""}</span></button>
            <div class="list-item-content">
                <h2 class="list-item-tittle">${e.tittle || "Tittle"}</h2>
                <span class="list-item-text">${e.description || ""}</span>
                <div class="row">
                    <a class="button button-git" href="${e.git || "./"}"><img alt="github logo" class="material-icons" height="32" width="32" src="https://unpkg.com/simple-icons@latest/icons/github.svg">github</a>
                    <div class="flex-middle">${e.video != undefined ? `<a href="${e.video || "./"}" class="button button-animate button-vid"><i class="material-icons">play_circle_filled</i></a>` : ' '}</div>
                    <a href="${e.download || "./"}" class="button button-download"><i class="material-icons">save_alt</i>download</a>
                </div>
            </div>
        </li>
    `));
    render(projects, document.getElementById("render"))
}


