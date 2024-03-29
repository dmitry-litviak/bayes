(function() {
    var user;

    user = {
        init: function() {
            this.detectElements();
            return this.bindEvents();
        },
        detectElements: function() {
            return this.form = $('.form-actions');
        },
        bindEvents: function() {
            var picker;
            this.initValidation();
            picker = $('.date').datepicker();
            return picker.on('changeDate', function(ev) {
                return picker.datepicker("hide");
            });
        },
        initValidation: function() {
            return this.form.validate({
                rules: {
                    first_name: {
                        minlength: 2,
                        required: true
                    },
                    last_name: {
                        minlength: 2,
                        required: true
                    },
                    email: {
                        required: true,
                        email: true
                    }
                },
                highlight: function(label) {
                    return $(label).closest(".control-group").addClass("error");
                }
            });
        }
    };

    $(document).ready(function() {
        return user.init();
    });

}).call(this);
