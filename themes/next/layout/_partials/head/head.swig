<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2">
<meta name="theme-color" content="{{ theme.android_chrome_color }}">
<meta name="generator" content="Hexo {{ hexo_version }}">

{%- if theme.favicon.apple_touch_icon %}
  <link rel="apple-touch-icon" sizes="180x180" href="{{ url_for(theme.favicon.apple_touch_icon) }}">
{%- endif %}
{%- if theme.favicon.medium %}
  <link rel="icon" type="image/png" sizes="32x32" href="{{ url_for(theme.favicon.medium) }}">
{%- endif %}
{%- if theme.favicon.small %}
  <link rel="icon" type="image/png" sizes="16x16" href="{{ url_for(theme.favicon.small) }}">
{%- endif %}
{%- if theme.favicon.safari_pinned_tab %}
  <link rel="mask-icon" href="{{ url_for(theme.favicon.safari_pinned_tab) }}" color="{{ theme.android_chrome_color }}">
{%- endif %}
{%- if theme.favicon.android_manifest %}
  <link rel="manifest" href="{{ url_for(theme.favicon.android_manifest) }}">
{%- endif %}
{%- if theme.favicon.ms_browserconfig %}
  <meta name="msapplication-config" content="{{ url_for(theme.favicon.ms_browserconfig) }}">
{%- endif %}

{%- if theme.disable_baidu_transformation %}
  <meta http-equiv="Cache-Control" content="no-transform">
  <meta http-equiv="Cache-Control" content="no-siteapp">
{%- endif %}
{%- if theme.google_site_verification %}
  <meta name="google-site-verification" content="{{ theme.google_site_verification }}">
{%- endif %}
{%- if theme.bing_site_verification %}
  <meta name="msvalidate.01" content="{{ theme.bing_site_verification }}">
{%- endif %}
{%- if theme.yandex_site_verification %}
  <meta name="yandex-verification" content="{{ theme.yandex_site_verification }}">
{%- endif %}
{%- if theme.baidu_site_verification %}
  <meta name="baidu-site-verification" content="{{ theme.baidu_site_verification }}">
{%- endif %}

<link rel="stylesheet" href="{{ url_for(theme.css) }}/main.css">

{{ next_font() }}

{%- set font_awesome_uri = theme.vendors.fontawesome or next_vendors('font-awesome/css/font-awesome.min.css') %}
<link rel="stylesheet" href="{{ font_awesome_uri }}">

{%- if theme.fancybox %}
  {%- set fancybox_css_uri = theme.vendors.fancybox_css or next_vendors('//cdn.jsdelivr.net/gh/fancyapps/fancybox@3/dist/jquery.fancybox.min.css') %}
  <link rel="stylesheet" href="{{ fancybox_css_uri }}">
{%- endif %}

{%- if theme.pace.enable %}
  {%- set pace_css_uri = theme.vendors.pace_css or next_vendors('pace/pace-theme-' + theme.pace.theme + '.min.css') %}
  {%- set pace_js_uri = theme.vendors.pace or next_vendors('pace/pace.min.js') %}
  <link rel="stylesheet" href="{{ pace_css_uri }}">
  <script src="{{ pace_js_uri }}"></script>
{%- endif %}

{# 顶部loading bar #}
{#
<script src="//cdn.bootcss.com/pace/1.0.2/pace.min.js"></script>
<link href="//cdn.bootcss.com/pace/1.0.2/themes/pink/pace-theme-flash.css" rel="stylesheet">
<style>
    .pace .pace-progress {
        background: #1E92FB; /*进度条颜色*/
        height: 3px;
    }
    .pace .pace-progress-inner {
         box-shadow: 0 0 10px #1E92FB, 0 0 5px     #1E92FB; /*阴影颜色*/
    }
    .pace .pace-activity {
        border-top-color: #1E92FB;    /*上边框颜色*/
        border-left-color: #1E92FB;    /*左边框颜色*/
    }
</style>
#}

{{ next_config() }}
