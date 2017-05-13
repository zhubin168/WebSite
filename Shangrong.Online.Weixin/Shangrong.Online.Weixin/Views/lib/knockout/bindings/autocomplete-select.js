ko.bindingHandlers.autocompleteSelect = {
    init: function (element) {
        $(element).css('width', '100%').select2({
            placeholder: '请选择...',
            allowClear: true
        });
    },
    update: function (element) {
        $(element).trigger('change');
        $(element).css('width', '100%').select2({
            placeholder: '请选择...',
            allowClear: true
        });
     
    }
};