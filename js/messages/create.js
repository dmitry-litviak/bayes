/**
 * Created with JetBrains PhpStorm.
 * User: dima
 * Date: 24.12.12
 * Time: 15:41
 * To change this template use File | Settings | File Templates.
 */
(function() {
    var create;

    create = {
        init: function() {
            this.detectElements();
            return this.bindEvents();
        },
        detectElements: function() {
            return this.form = $('.form-actions');
        },
        bindEvents: function() {
            return this.initValidation();
        },
        initValidation: function() {
            return this.form.validate({
                rules: {
                    title: {
                        minlength: 2,
                        required: true
                    },
                    message: {
                        minlength: 2,
                        required: true
                    }
                },
                highlight: function(label) {
                    return $(label).closest(".control-group").addClass("error");
                }
            });
        }
    };

    $(document).ready(function() {
        return create.init();
    });

}).call(this);
