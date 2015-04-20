(function ($) {
  Drupal.behaviors.autodialog = {
    attach: function (context, settings) {
      $('.autodialog', context).once('autodialog', function () {
        var $link = $(this);
        var linkId = $link.attr('id');
        if (!linkId) {
          linkId = Drupal.autodialog.generateId();
          $link.attr('id', linkId);
        }
        var options = Drupal.autodialog.getOptions(this);

        Drupal.ajax[linkId] = new Drupal.ajax(linkId, this, {
          progress: {type: 'throbber'},
          url: $link.attr('href'),
          event: 'click',
          submit: {
            js: true,
            autodialog_link_id: linkId,
            autodialog_options: JSON.stringify(options)
          },
          beforeSerialize: function (xmlhttprequest, options) {
            options.url = $link.attr('href');
            $('body').addClass('autodialog-loading');
            Drupal.ajax.prototype.beforeSerialize.apply(this, arguments);
          },
          success: function (response, status) {
            $('body').removeClass('autodialog-loading');
            Drupal.ajax.prototype.success.apply(this, arguments);
          },
        });
      });
    }
  };

  Drupal.ajax.prototype.commands.autodialog = function(ajax, response, status) {
    var options = {
      title: response.title,
      modal: true,
      width: 500,
      close: function() {
        $(this).dialog('destroy').remove();
      }
    };
    $.extend(options, response.options);
    var $dialog = $('<div id="' + response.dialog_id + '">' + response.content + '</div>').dialog(options);
    Drupal.attachBehaviors($dialog);
  }

  Drupal.ajax.prototype.commands.autodialogCenter = function(ajax, response, status) {
    $('#' + response.dialog_id).dialog('option', 'position', 'center');
  }

  Drupal.autodialog = Drupal.autodialog || {
    generateId: function () {
      var index = 1;
      while (1) {
        var id = 'autodialog-' + index++;
        if ($('#' + id).length == 0) {
          return id;
        }
      }
    },

    getOptions: function (element) {
      var options = {};
      $.each($(element).data(), function (key, value) {
        var matches = key.match(/dialog(.+)/);
        if (matches) {
          var optionKey;

          // For jQuery 1.4.4-1.5
          if (matches[1][0] == '-') {
            optionKey = matches[1].substring(1).replace(/-(.)/g, function (str, match) {
              return match.toUpperCase();
            });
          }
          // For jQuery 1.6+
          else {
            optionKey = matches[1].substring(0, 1).toLowerCase() + matches[1].substring(1);
          }

          options[optionKey] = value;
        }
      });
      return options;
    }
  };
})(jQuery);
