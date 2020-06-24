!(function (a) {
  "use strict";
  var t = function () {};
  (t.prototype.init = function () {
    a(".colorpicker-default").colorpicker({ format: "hex" }),
      a(".colorpicker-rgba").colorpicker(),
      a("#colorpicker-horizontal").colorpicker({ color: "#88cc33", horizontal: !0 }),
      a("#colorpicker-color-pattern").colorpicker({ colorSelectors: { black: "#000000", white: "#ffffff", red: "#FF0000", default: "#777777", primary: "#337ab7", success: "#5cb85c", info: "#5bc0de", warning: "#f0ad4e", danger: "#d9534f" } }),
      a(".colorpicker-large").colorpicker({ customClass: "colorpicker-2x", sliders: { saturation: { maxLeft: 200, maxTop: 200 }, hue: { maxTop: 200 }, alpha: { maxTop: 200 } } }),
      jQuery("#datepicker").datepicker(),
      jQuery("#datepicker-autoclose").datepicker({ autoclose: !0, todayHighlight: !0 }),
      jQuery("#datepicker-multiple-date").datepicker({ format: "mm/dd/yyyy", clearBtn: !0, multidate: !0, multidateSeparator: "," }),
      jQuery("#date-range").datepicker({ toggleActive: !0 }),
      a("input#defaultconfig").maxlength({ warningClass: "badge badge-info", limitReachedClass: "badge badge-warning" }),
      a("input#thresholdconfig").maxlength({ threshold: 20, warningClass: "badge badge-info", limitReachedClass: "badge badge-warning" }),
      a("input#moreoptions").maxlength({ alwaysShow: !0, warningClass: "badge badge-success", limitReachedClass: "badge badge-danger" }),
      a("input#alloptions").maxlength({ alwaysShow: !0, warningClass: "badge badge-success", limitReachedClass: "badge badge-danger", separator: " out of ", preText: "You typed ", postText: " chars available.", validate: !0 }),
      a("textarea#textarea").maxlength({ alwaysShow: !0, warningClass: "badge badge-info", limitReachedClass: "badge badge-warning" }),
      a("input#placement").maxlength({ alwaysShow: !0, placement: "top-left", warningClass: "badge badge-info", limitReachedClass: "badge badge-warning" }),
      a(".vertical-spin").TouchSpin({ verticalbuttons: !0, verticalupclass: "ion-plus-round", verticaldownclass: "ion-minus-round", buttondown_class: "btn btn-primary", buttonup_class: "btn btn-primary" }),
      a("input[name='demo1']").TouchSpin({ min: 0, max: 100, step: 0.1, decimals: 2, boostat: 5, maxboostedstep: 10, postfix: "%", buttondown_class: "btn btn-primary", buttonup_class: "btn btn-primary" }),
      a("input[name='demo2']").TouchSpin({ min: -1e9, max: 1e9, stepinterval: 50, maxboostedstep: 1e7, prefix: "$", buttondown_class: "btn btn-primary", buttonup_class: "btn btn-primary" }),
      a("input[name='demo3']").TouchSpin({ buttondown_class: "btn btn-primary", buttonup_class: "btn btn-primary" }),
      a("input[name='demo3_21']").TouchSpin({ initval: 40, buttondown_class: "btn btn-primary", buttonup_class: "btn btn-primary" }),
      a("input[name='demo3_22']").TouchSpin({ initval: 40, buttondown_class: "btn btn-primary", buttonup_class: "btn btn-primary" }),
      a("input[name='demo5']").TouchSpin({ prefix: "pre", postfix: "post", buttondown_class: "btn btn-primary", buttonup_class: "btn btn-primary" }),
      a("input[name='demo0']").TouchSpin({ buttondown_class: "btn btn-primary", buttonup_class: "btn btn-primary" }),
      a(".select2").select2(),
      a(".select2-limiting").select2({ maximumSelectionLength: 2 });
  }),
    (a.AdvancedForm = new t()),
    (a.AdvancedForm.Constructor = t);
})(window.jQuery),
  (function (a) {
    "use strict";
    window.jQuery.AdvancedForm.init();
  })();
