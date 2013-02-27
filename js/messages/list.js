(function() {
    var list;

    list = {
        init: function() {
            this.detectElements();
            return this.bindEvents();
        },
        detectElements: function() {
            this.btn_text = $('.text');
            this.text_container = $('.modal-body');
            return this.label_text = $('#myModalLabel');
        },
        bindEvents: function() {
            return this.initShowText();
        },
        initShowText: function(e) {
            var _this = this;
            return this.btn_text.click(function(e) {
                var el, me;
                el = $(e.currentTarget);
                me = _this;
                return $.ajax({
                    url: SYS.baseUrl + 'messages/get_text',
                    data: $.param({
                        id: el.data("id")
                    }),
                    type: 'POST',
                    dataType: 'json',
                    success: function(res) {
                        if (res.text = "success") {
                            me.label_text.html('Текст сообщения "' + res.data.title + '"');
                            return me.text_container.html(res.data.text);
                        }
                    }
                });
            });
        }
    };

    $(document).ready(function() {
        return list.init();
    });

}).call(this);
