<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Hiển thị nhiều ảnh trước khi upload</title>
    <style type="text/css">
        .wrap {
            margin: 10% auto;
            width: 60%;
        }
        
        .dandev-reviews {
            position: relative;
            margin: 20px 0;
        }
        
        .dandev-reviews .form_upload {
            width: 320px;
            position: relative;
            padding: 5px;
            bottom: 0px;
            height: 40px;
            left: 0;
            z-index: 5;
            box-sizing: border-box;
            background: #f7f7f7;
            border-top: 1px solid #ddd;
        }
        
        .dandev-reviews .form_upload>label {
            height: 35px;
            width: 160px;
            display: block;
            cursor: pointer;
        }
        
        .dandev-reviews .form_upload label span {
            padding-left: 26px;
            display: inline-block;
            background: url(images/camera.png) no-repeat;
            background-size: 23px 20px;
            margin: 5px 0 0 10px;
        }
        
        .list_attach {
            display: block;
            margin-top: 30px;
        }
        
        ul.dandev_attach_view {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        
        ul.dandev_attach_view li {
            float: left;
            width: 80px;
            margin: 0 20px 20px 0 !important;
            padding: 0!important;
            border: 0!important;
            overflow: inherit;
            clear: none;
        }
        
        ul.dandev_attach_view .img-wrap {
            position: relative;
        }
        
        ul.dandev_attach_view .img-wrap .close {
            position: absolute;
            right: -10px;
            top: -10px;
            background: #000;
            color: #fff!important;
            border-radius: 50%;
            z-index: 2;
            display: block;
            width: 20px;
            height: 20px;
            font-size: 16px;
            text-align: center;
            line-height: 18px;
            cursor: pointer!important;
            opacity: 1!important;
            text-shadow: none;
        }
        
        ul.dandev_attach_view li.li_file_hide {
            opacity: 0;
            visibility: visible;
            width: 0!important;
            height: 0!important;
            overflow: hidden;
            margin: 0!important;
        }
        
        ul.dandev_attach_view .img-wrap-box {
            position: relative;
            overflow: hidden;
            padding-top: 100%;
            height: auto;
            background-position: 50% 50%;
            background-size: cover;
        }
        
        .img-wrap-box img {
            right: 0;
            width: 100%!important;
            height: 100%!important;
            bottom: 0;
            left: 0;
            top: 0;
            position: absolute;
            object-position: 50% 50%;
            object-fit: cover;
            transition: all .5s linear;
            -moz-transition: all .5s linear;
            -webkit-transition: all .5s linear;
            -ms-transition: all .5s linear;
        }
        
        ul li,
        ol li {
            list-style-position: inside;
        }
        
        .list_attach span.dandev_insert_attach {
            width: 80px;
            height: 80px;
            text-align: center;
            display: inline-block;
            border: 2px dashed #ccc;
            line-height: 76px;
            font-size: 25px;
            color: #ccc;
            display: none;
            cursor: pointer;
            float: left;
        }
        
        ul.dandev_attach_view {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        
        ul.dandev_attach_view .img-wrap {
            position: relative;
        }
        
        .list_attach.show-btn span.dandev_insert_attach {
            display: block;
            margin: 0 0 20px!important;
        }
        
        i.dandev-plus {
            font-style: normal;
            font-weight: 900;
            font-size: 35px;
            line-height: 1;
        }
        
        ul.dandev_attach_view li input {
            display: none;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>

<body>
    <div class="wrap">
        <h1>Hiển thị nhiều ảnh trước khi upload</h1>
        <div class="dandev-reviews">
            <div class="form_upload">
                <label class="dandev_insert_attach"><span>Đính kèm ảnh</span></label>
            </div>
            <div class="list_attach">
                <ul class="dandev_attach_view">

                </ul>
                <span class="dandev_insert_attach"><i class="dandev-plus">+</i></span>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('.dandev_insert_attach').click(function() {
            if ($('.list_attach').hasClass('show-btn') === false) {
                $('.list_attach').addClass('show-btn');
            }
            var _lastimg = jQuery('.dandev_attach_view li').last().find('input[type="file"]').val();

            if (_lastimg != '') {
                var d = new Date();
                var _time = d.getTime();
                var _html = '<li id="li_files_' + _time + '" class="li_file_hide">';
                _html += '<div class="img-wrap">';
                _html += '<span class="close" onclick="DelImg(this)">×</span>';
                _html += ' <div class="img-wrap-box"></div>';
                _html += '</div>';
                _html += '<div class="' + _time + '">';
                _html += '<input type="file" class="hidden"  onchange="uploadImg(this)" id="files_' + _time + '"   />';
                _html += '</div>';
                _html += '</li>';
                jQuery('.dandev_attach_view').append(_html);
                jQuery('.dandev_attach_view li').last().find('input[type="file"]').click();
            } else {
                if (_lastimg == '') {
                    jQuery('.dandev_attach_view li').last().find('input[type="file"]').click();
                } else {
                    if ($('.list_attach').hasClass('show-btn') === true) {
                        $('.list_attach').removeClass('show-btn');
                    }
                }
            }
        });

        function uploadImg(el) {
            var file_data = $(el).prop('files')[0];
            var type = file_data.type;
            var fileToLoad = file_data;

            var fileReader = new FileReader();

            fileReader.onload = function(fileLoadedEvent) {
                var srcData = fileLoadedEvent.target.result;

                var newImage = document.createElement('img');
                newImage.src = srcData;
                var _li = $(el).closest('li');
                if (_li.hasClass('li_file_hide')) {
                    _li.removeClass('li_file_hide');
                }
                _li.find('.img-wrap-box').append(newImage.outerHTML);


            }
            fileReader.readAsDataURL(fileToLoad);

        }

        function DelImg(el) {
            jQuery(el).closest('li').remove();

        }
    </script>
</body>

</html>