

/* Search */
var product = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.whitespace,
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: {
        wildcard: '%QUERY',
        url: '/search?query=%QUERY'
    }
});

product.initialize();
$("typeahead").typeahead({
    highlight: true
},{
    name: 'products',
    display: 'title',
    limit: 10,
    source: products
});

$("typeahead").bind('typeahead:select', function(ev, suggestion) {
    window.location = '/product' + encodeURIComponent(suggestion.id)
});