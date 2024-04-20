// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

let calculator = {
    ssrEndpoint: function () {
        return '/component/render/';
    },
    getAllTabs: function () {
        return [...document.querySelectorAll('.tab.game.pickable')];

    },
    getAllGameContainers: function () {
        return [...document.querySelectorAll('.tab.game.pickable')];
    },
    attachListeners: function () {
        this.getAllTabs().forEach((tab) => {
            tab.addEventListener('click', this.showGameTabConditional(tab))
        })
    },
    showGameTabConditional: function () {
        console.log(tab)
    },
    switchService: function() {
        
    },
    requestGameTab: async function (data) {
        let extras = fetch(this.ssrEndpoint() + "extras", {
            method: "POST",
            body: JSON.stringify({
                game_id: data[game_id]
            }),
            headers: {
                "Content-type": "application/json; charset=UTF-8"
            }
        });
        let service = fetch(this.ssrEndpoint() + "service", {
            method: "POST",
            body: JSON.stringify({
                service_id: data[service_id]
            }),
            headers: {
                "Content-type": "application/json; charset=UTF-8"
            }
        });
        let fields = fetch(this.ssrEndpoint() + "fields", {
            method: "POST",
            body: JSON.stringify({
                service_id: data[service_id]
            }),
            headers: {
                "Content-type": "application/json; charset=UTF-8"
            }
        });
    }
}

let helper = {
    isDOMLoaded() {
        return (document.readyState === 'ready' ||
            document.readyState === 'complete')
    }
}

if (helper.isDOMLoaded()) {
    calculator.attachListeners();
}
