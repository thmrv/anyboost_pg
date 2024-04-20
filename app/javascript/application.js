// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery-rails"

let calculator = {
    ssrEndpoint: function() {
        return '';
    },
    getAllTabs: function() {

    },
    attachListeners: function() {

    },
    requestGameTab: function() {

    }
}

let helper = {
    isDOMLoaded() {
        return (document.readyState === 'ready' ||
            document.readyState === 'complete')
    }
}

if (helper.isDOMLoaded()) {

}
