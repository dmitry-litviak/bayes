// Generated by CoffeeScript 1.4.0
var Alert, LazyPagination, days_diff, uploader;

SYS.spinerUrl = SYS.baseUrl + 'img/spinner.gif';

uploader = (function() {

  uploader.prototype.options = {
    url: SYS.baseUrl + "uploader/temp",
    dataType: 'json'
  };

  function uploader(o) {
    $.extend(this, o);
    this.init();
  }

  uploader.prototype.init = function() {
    var _this = this;
    this.selector.fileupload(this.options);
    this.selector.bind('fileuploadadd', function(e, data) {
      if (typeof _this.addCallback === "function") {
        _this.addCallback(e, data);
      }
      return $(e.currentTarget).data('fileupload')._trigger('sent', e, data);
    });
    this.selector.bind('fileuploadprogress', function(e, data) {
      var progress;
      progress = parseInt(data.loaded / data.total * 100, 10);
      return typeof _this.progressCallback === "function" ? _this.progressCallback(progress) : void 0;
    });
    return this.selector.bind('fileuploaddone', function(e, data) {
      return typeof _this.doneCallback === "function" ? _this.doneCallback(e, data) : void 0;
    });
  };

  return uploader;

})();

LazyPagination = (function() {

  LazyPagination.prototype.direction = 'next';

  LazyPagination.prototype.offset = 0;

  function LazyPagination() {
    this.detectElements();
    this._bindEvent();
  }

  LazyPagination.prototype.setDirection = function(direction) {
    return this.direction = direction;
  };

  LazyPagination.prototype.detectElements = function() {
    return this.button = $('.pager > li > a');
  };

  LazyPagination.prototype.recountOffset = function() {
    return this.offset = $('fieldset.places').length;
  };

  LazyPagination.prototype._bindEvent = function() {
    var _this = this;
    return this.button.on('click', function() {
      _this.recountOffset();
      _this._getItem();
      return false;
    });
  };

  LazyPagination.prototype._getItem = function() {
    var _this = this;
    return $.ajax({
      url: "" + SYS.baseUrl + "messages/ajax_get_trip",
      dataType: 'json',
      data: $.param({
        offset: this.offset,
        direction: this.direction
      }),
      beforeSend: function() {
        return $('.spiner').show();
      },
      complete: function() {
        return $('.spiner').hide();
      },
      success: function(res) {
        if (res.text === 'success') {
          return $('fieldset:last').after(res.data);
        } else {
          _this.button.parent().addClass('disabled');
          _this.button.off('click');
          return (new Alert).setLayout('main').setStatus('info').setMessage('Nothing more, sorry').render();
        }
      }
    });
  };

  return LazyPagination;

})();

Alert = (function() {

  function Alert() {}

  Alert.prototype.prepend_selector = $('body');

  Alert.prototype.setStatus = function(status) {
    this.status = status;
    switch (status) {
      case "success":
        this.strong = "Well done!";
        break;
      case "error":
        this.strong = "Oh snap!";
        break;
      case "info":
        this.strong = "Info!";
        break;
      default:
        this.strong = "Info!";
    }
    return this;
  };

  Alert.hideAll = function() {
    return $(".alert").remove();
  };

  Alert.prototype.setLayout = function(layout) {
    if (layout == null) {
      layout = "main";
    }
    switch (layout) {
      case "main":
        this.prepend_selector = ".my-container";
        break;
      case "admin":
        this.prepend_selector = ".span8";
        break;
      default:
        this.prepend_selector = ".my-container";
    }
    return this;
  };

  Alert.prototype.setMessage = function(message) {
    this.message = message;
    return this;
  };

  Alert.prototype.render = function() {
    var html;
    $(".alert").remove();
    html = "<div class=\"alert alert-" + this.status + "\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button><strong>" + this.strong + "</strong> " + this.message + "</div>";
    return $(this.prepend_selector).prepend(html);
  };

  return Alert;

})();

days_diff = function(date1, date2) {
  var one_day, res;
  one_day = 1000 * 60 * 60 * 24;
  date1.getMonth() - 1;
  date1.getMonth() - 1;
  res = Math.ceil((date2.getTime() - date1.getTime()) / one_day);
  if (res <= 0) {
    res = 0;
  }
  return res;
};
