ko.bindingHandlers.datetimePicker = {
    init: function (element, valueAccessor, allBindingsAccessor) {
        var value = valueAccessor();
        var options = allBindingsAccessor().dateTimePickerOptions || {};
      
        $(element).datetimepicker(options).on('change', function () {
            if (ko.isObservable(value)) {
                value($(element).val());
            } else {
                console.log('Writtable datetimepicker should bind to an observable.');
            }
        });
    },
    update: function (element, valueAccessor) {
        var value = ko.utils.unwrapObservable(valueAccessor());
        if (value) {
            $(element).val(value);
            $(element).datetimepicker('update');
        }
    }
};