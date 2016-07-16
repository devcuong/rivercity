/// <reference path="/Scripts/jquery-1.7.2.min.js" />

(function ($) {

    AdvanceHiddenDropbox = function (_options) {

        var $this = $(this);

        if ($this.length == 0)
            return null;

        this.Value = $('#' + _options.hddValue);

        this.divOptions = $('#' + _options.id);

        if (_options.css)
            this.divOptions.css(_options.css);

        this.divOptions.children('ul').css('min-width', $this.width() + 'px');
        this.divOptions.children('ul').children('li').css('min-width', ($this.width() - 32) + 'px');
        if (this.divOptions.children('ul').height() > 300)
            this.divOptions.css('width', ($this.width() + 22) + 'px');

        if (this.divOptions.width() < $this.width())
            this.divOptions.css('width', $this.width() + 'px');

        if (_options.minValue != undefined)
            this.txtMinValue = $('#' + _options.minValue);
        else
            this.txtMinValue = null;
        if (_options.maxValue != undefined)
            this.txtMaxValue = $('#' + _options.maxValue);
        else
            this.txtMaxValue = null;

        this.lstValue = this.divOptions.children('ul').children();
        this.selectText = $this.children(".select-text");
        this.bgIcon = this.selectText.css('background-image');

        this.textDefault = $(this.selectText.children()[0]).text();
        this.valueDefault = $(this.lstValue[0]).attr('vl');

        var userAgent = window.navigator.userAgent;
        if ((_options.id == 'divCityOptions' || _options.id == 'divDistrictOptions' || _options.id == 'divWardOptions' || _options.id == 'divStreetOptions' || _options.id == 'divProjectOptions' || _options.id == 'divCityCompareOptions' || _options.id == 'divDistrictCompareOptions' || _options.id == 'divWardCompareOptions' || _options.id == 'divStreetCompareOptions' || _options.id == 'divProjectCompareOptions') && userAgent.indexOf('MSIE') < 0 && userAgent.indexOf('Trident') < 0) {
            this.selectText.html('<input type="text" class="select-text-content" value="' + this.textDefault + '" placeholder="' + this.textDefault + '"/>');
        }

        this.selectText.children().css('width', (this.selectText.width() - 25) + 'px');

        this.selectText.children('.select-text-content').off('keypress keydown keyup');

        this.selectText.on('click', this, function (evt) {

            evt.preventDefault();
            evt.stopPropagation();

            $(this).children().val('');

            if (evt.data.selectText.children('input.select-text-content').length > 0)
                evt.data.selectText.css('background-image', 'none');

            evt.data.selectText.children().removeAttr('placeholder');

            if (evt.data.divOptions.parent().prop("tagName") != 'form') {
                evt.data.divOptions.appendTo('form');
            }

            if (evt.data.divOptions.css('display') == 'none') {

                $('.advance-select-options').css('display', 'none');

                $(this).children().removeAttr('readonly');

                var offset = $(evt.data).offset();

                if (evt.data.divOptions.css('position') != 'fixed') {
                    evt.data.divOptions.css('top', (offset.top + $this.height() + 2) + 'px');
                    evt.data.divOptions.css('left', offset.left + 'px');
                }

                evt.data.divOptions.css('display', 'block');

                evt.data.lstValue.removeClass('current');
                evt.data.lstValue.show();

                if (evt.data.Value.val().length > 0 && (evt.data.txtMaxValue == null || evt.data.txtMaxValue.val().length == 0) && (evt.data.txtMinValue == null || evt.data.txtMinValue.val().length == 0)) {
                    evt.data.divOptions.children('ul').children('[vl=' + evt.data.Value.val() + ']').addClass('current');
                }

                if (evt.data.txtMinValue != null) {
                    evt.data.txtMinValue.focus();
                }

                $('body').bind('click', evt.data, function (_evt) {

                    if ($(_evt.target).hasClass('advance-options')) {
                        _evt.preventDefault();
                        _evt.stopPropagation();
                    }
                    else {
                        _evt.data.CheckToClose();
                    }
                });
            } else {
                evt.data.divOptions.css('display', 'none');
                $(this).children().attr('readonly', 'true');
                evt.data.SetValue();
            }

            return $(this);

        });

        this.selectText.children('.select-text-content').on('focus', function () {
            var $this = $(this);
            $this.data('before', $this.val());
            $this.val('');
            return $this;
        }).on('change', this, function (evt) {

            var box = evt.data

            var _keyword = UnicodeToKoDau($(this).val()).Trim().toLowerCase();

            if (_keyword.length > 1) {
                $(box.lstValue).each(function () {
                    var text = UnicodeToKoDau($(this).text()).Trim().toLowerCase();

                    if ($(this).attr('vl') == '' || $(this).attr('vl') == '0' || $(this).attr('vl') == 'CN' || text.indexOf(_keyword) < 0) {
                        $(this).hide();
                    } else {
                        $(this).show();
                    }
                });
            } else {
                $(box.lstValue).show();
            }

        }).on('keydown', this, function (evt) {

            if (evt.keyCode == 13 || evt.keyCode == 9) {
                try {
                    var cur = evt.data.divOptions.children('ul').children('li.current:visible');
                    if (cur.length == 1) {
                        cur.trigger('click');
                    } else {
                        var lstVisible = evt.data.divOptions.children('ul').children('li:visible');

                        if (lstVisible != undefined && lstVisible.length > 0) {
                            $(lstVisible[0]).trigger('click');
                        }
                    }
                    $(this).blur();
                } catch (ex) {
                    //console.log(ex);
                }
                evt.preventDefault();
                evt.stopPropagation();
                return false;
            }
            else if (evt.keyCode == 40 || evt.keyCode == 38)//down / up
            {
                var cur = evt.data.divOptions.children('ul').children('li:visible');
                if (cur.length > 0) {
                    var cur = evt.data.divOptions.children('ul').children('li.current:visible');
                    if (cur.length > 0) {
                        cur = $(cur[0]);
                        cur.removeClass('current');
                        if (evt.keyCode == 40) {
                            var next = cur;
                            while (next.hasClass('advance-options') && next.next(":not(:visible)").length > 0) {
                                next = next.next();
                            }
                            if (next.next(':visible').length > 0)
                                cur = next.next();
                        } else if (evt.keyCode == 38) {
                            var prev = cur;
                            while (prev.hasClass('advance-options') && prev.prev(":not(:visible)").length > 0) {
                                prev = prev.prev();
                            }
                            if (prev.prev(':visible').length > 0)
                                cur = prev.prev();
                        }
                    } else {
                        evt.data.divOptions.children('ul').children('li').removeClass('current');
                        cur = $(evt.data.divOptions.children('ul').children('li:visible')[0]);
                    }

                    if (cur != undefined && cur.length > 0) {
                        cur.addClass('current');
                        $(this).val(cur.text().Trim());
                    }
                }
            } else {
                return true;
            }
        }).on('keyup', function (evt) {
            if (evt.keyCode == 13) {
                evt.preventDefault();
                evt.stopPropagation();
            } else {
                if(evt.keyCode != 40 && evt.keyCode != 38){
                    var $this = $(this);
                    if ($this.data('before') !== $this.val()) {
                        $this.data('before', $this.val());
                        $this.trigger('change');
                    }
                }
            }
            return true;
        }).on('keypress', function (evt) {
            if (evt.keyCode == 13) {
                evt.preventDefault();
                evt.stopPropagation();
            }
            return true;
        }).on('blur', this, function (evt) {
            //evt.data.SetValue();
            //evt.data.divOptions.hide();
            //return false;
        }).on('paste input', function () {
            var $this = $(this);
            if ($this.data('before') !== $this.val()) {
                $this.data('before', $this.val());
                $this.trigger('change');
            }
            return $this;
        });


        if (_options.unit != undefined)
            this.unitPrice = _options.unit;
        else
            this.unitPrice = null;

        this.minValue = 0;
        this.maxValue = 0;

        function EventKeyDownHandler(el, event) {
            var code = event.keyCode ? event.keyCode : event.which;
            if (code == 13) {
                event.data.CheckToClose();
                event.preventDefault();
            }
            else {
                var decimal = $(el).attr('decimal') == 'true';
                var retval = numbersonly(el, event, decimal);
                if (retval == false) {
                    event.preventDefault();
                }
            }
        }

        function EventKeyUpHandler(el, event) {
            event.data.UpdateTextValue();

            var val = $(el).val();
            if ($(el).attr('id') == _options.minValue) {
                event.data.minValue = parseFloat(val);
            } else {
                event.data.maxValue = parseFloat(val);
            }
            event.data.Value.val('');
        }

        if (this.txtMinValue != null) {
            this.txtMinValue.bind('keydown', this, function (event) {
                EventKeyDownHandler(this, event);
            });
            this.txtMinValue.bind('keyup', this, function (event) {
                EventKeyUpHandler(this, event);
            });
        }
        if (this.txtMaxValue != null) {
            this.txtMaxValue.bind('keydown', this, function (event) {
                EventKeyDownHandler(this, event);
            });
            this.txtMaxValue.bind('keyup', this, function (event) {
                EventKeyUpHandler(this, event);
            });
        }

        this.CheckToClose = function () {

            if (this.txtMaxValue != null && this.txtMinValue != null && (this.txtMaxValue.val().length > 0 || this.txtMinValue.val().length > 0)) {
                var min = parseFloat(this.txtMinValue.val());
                var max = parseFloat(this.txtMaxValue.val());
                if (max < min) {
                    var tempValue = this.txtMaxValue.val();
                    this.txtMaxValue.val(this.txtMinValue.val());
                    this.txtMinValue.val(tempValue);
                }
                this.UpdateTextValue();
            } else {
                this.SetValue();
            }

            this.divOptions.css('display', 'none');
            $('body').unbind('click');

            if (this.selectText.children('input.select-text-content').length > 0) {
                this.selectText.css('background-image', this.bgIcon);
                this.selectText.children().attr('placeholder', this.textDefault);
            }

            return true;

        }

        this.UpdateTextValue = function () {

            if (this.txtMaxValue != null && this.txtMinValue != null) {
                if (this.txtMinValue.val().length == 0 && this.txtMaxValue.val().length == 0) {
                    this.SetValue();
                }
                else {
                    var _text = '';
                    var hasValue = false;

                    if (this.unitPrice == 'money') {

                        if (this.txtMinValue.val().length > 0) {
                            var txt = GetMoneyText2(parseFloat(this.txtMinValue.val()) * 1000000);
                            if (this.txtMaxValue.val().length > 0)
                                _text += txt;
                            else
                                _text += '>= ' + txt;

                            $('#' + _options.lblMin).text(txt);

                            hasValue = true;
                        }
                        else {
                            $('#' + _options.lblMin).text('');
                        }
                        if (this.txtMaxValue.val().length > 0) {

                            var txt = GetMoneyText2(parseFloat(this.txtMaxValue.val()) * 1000000);
                            if (this.txtMinValue.val().length > 0)
                                _text += ' - ' + txt;
                            else
                                _text += '< ' + txt;

                            $('#' + _options.lblMax).text(txt);

                            hasValue = true;
                        } else {
                            $('#' + _options.lblMax).text('');
                        }
                    }
                    else if (this.unitPrice == 'area') {
                        if (this.txtMinValue.val().length > 0) {
                            if (this.txtMaxValue.val().length > 0)
                                _text += this.txtMinValue.val();
                            else
                                _text += '>= ' + this.txtMinValue.val();

                            hasValue = true;
                        }
                        if (this.txtMaxValue.val().length > 0) {

                            if (this.txtMinValue.val().length > 0)
                                _text += ' - ' + this.txtMaxValue.val();
                            else
                                _text += '< ' + this.txtMaxValue.val();

                            hasValue = true;
                        }

                        _text += ' m2';
                    }

                    if (hasValue)
                        this.selectText.addClass('hasvalue');
                    else
                        this.selectText.removeClass('hasvalue');

                    if (this.selectText.children()[0].tagName.toLowerCase() == 'span') {
                        this.selectText.children().text(_text);
                    } else {
                        this.selectText.children().val(_text);
                    }
                }
            }
        }

        this.UpdateOptions = function (_html) {

            this.divOptions.children('ul').html(_html);
            this.lstValue = this.divOptions.children('ul').children();
            this.BindOptionEvent();

        }

        this.SetValue = function (val) {

            var text = '';
            var hasValue = false;

            if (val != undefined && this.divOptions.children('ul').children('[vl=' + val + ']').length > 0) {
                text = this.divOptions.children('ul').children('[vl=' + val + ']').text();
            } else {
                var cur;
                if (this.divOptions.children('ul').children('li.current:visible').length > 0) {
                    var cur = $(this.divOptions.children('ul').children('li.current:visible')[0]);
                } else if (this.divOptions.children('ul').children('li:visible').length > 0) {
                    var cur = $(this.divOptions.children('ul').children('li:visible')[0]);
                } else {
                    cur = this.divOptions.children('ul').children(':nth-child(1)');
                }

                text = cur.text();
                val = cur.attr('vl');
            }

            if (val == this.valueDefault)
                text = this.textDefault;
            else
                hasValue = true;

            if (hasValue)
                this.selectText.addClass('hasvalue');
            else
                this.selectText.removeClass('hasvalue');

            //console.log('hasvalue:' + hasValue + ', val:' + val + ', valdefault: ' + this.valueDefault);

            if (this.selectText.children()[0].tagName.toLowerCase() == 'span') {
                this.selectText.children().text(text);
            }
            else {
                this.selectText.children().val(text);
            }
            
            this.selectText.children().attr('readonly', 'true');
            this.Value.val(val);

            if (this.txtMaxValue != null)
                this.txtMaxValue.val('');

            if (this.txtMinValue != null)
                this.txtMinValue.val('');
        }

        this.GetValue = function () {
            return this.Value.val();
        }

        this.GetText = function(){
            if (this.selectText.children()[0].tagName.toLowerCase() == 'span') {
                return $(this.selectText.children()[0]).text();
            } else {
                return $(this.selectText.children()[0]).val();
            }
        }

        this.BindOptionEvent = function () {
            this.lstValue.bind('click', this, function (evt) {

                $('body').unbind('click');
                var val = $(this).attr('vl');
                var hasValue = val != evt.data.valueDefault;

                evt.data.Value.val(val);
                if (evt.data.txtMinValue != null && evt.data.txtMaxValue != null) {
                    evt.data.txtMinValue.val('');
                    evt.data.txtMaxValue.val('');
                }

                if (hasValue)
                    evt.data.selectText.addClass('hasvalue');
                else
                    evt.data.selectText.removeClass('hasvalue');

                if (evt.data.selectText.children()[0].tagName.toLowerCase() == 'span') {
                    evt.data.selectText.children().text($(this).text());
                } else {
                    evt.data.selectText.children().val($(this).text());
                }

                evt.data.divOptions.css('display', 'none');

                if (evt.data._ChangeFunc != null) {
                    evt.data._ChangeFunc(evt.data._ChangeFuncScope);
                }

                if (evt.data.selectText.children('input.select-text-content').length > 0) {
                    evt.data.selectText.css('background-image', evt.data.bgIcon);
                    evt.data.selectText.children().attr('placeholder', this.textDefault);
                }

            });
        }

        this._ChangeFunc = null;
        this._ChangeFuncScope = null;
        this.BindChangeEvent = function (_scope, func) {
            this._ChangeFunc = func;
            this._ChangeFuncScope = _scope;
        }

        this.BindOptionEvent();

        if (this.txtMaxValue != null && this.txtMinValue != null && (this.txtMaxValue.val().length > 0 || this.txtMinValue.val().length > 0)) {
            this.UpdateTextValue();
        }
        else {
            if (this.divOptions.children('ul').children('.current').length > 0) {
                var _val = this.divOptions.children('ul').children('.current').attr('vl');
                this.SetValue(_val);
            } else {
                var _val = this.divOptions.children('ul').children(':first').attr('vl');
                this.SetValue(_val);
            }
        }

        return this;

    }

    AdvanceHiddenDropbox.getValueById = function () {

    }

    $.fn.AdvanceHiddenDropbox = AdvanceHiddenDropbox;
    $.fn.AdvanceHiddenDropbox.getValueById = AdvanceHiddenDropbox.getValueById;

}(jQuery));