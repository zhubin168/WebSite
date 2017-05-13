ko.bindingHandlers.citySelector = {
    init: function (element, valueAccessor, allBindingsAccessor) {
        var value = valueAccessor();
        var allBindings = allBindingsAccessor();
        var cities = ko.utils.unwrapObservable(allBindings.cities);
        $(element).citySelector({ datas: cities, select: function (item) { value(item) } });
    },
    update: function (element, valueAccessor) {
        var value = ko.utils.unwrapObservable(valueAccessor());
        if (value) {
            $(element).val(value.text);
        }
    }
};