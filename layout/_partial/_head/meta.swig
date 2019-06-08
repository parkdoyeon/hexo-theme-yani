<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1,minimum-scale=1,maximum-scale=1">

{% if config.google_site_verification %}
<meta name="google-site-verification" content="{{ config.google_site_verification }}" />
{% endif %}

{% if config.naver_site_verification %}
<meta name="google-site-verification" content="{{ config.naver_site_verification }}" />
{% endif %}

{# Disable transformation #}
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

{# Website OpenGraph setting #}
<meta property="og:type" content="website">
<meta property="og:url" content="{{ config.url }}/{{ page.canonical_path.replace('index.html', '') }}">

{% if page.title %}
  <meta property="og:title" content="{{ page.title }}">
{% elif config.title %}
  <meta property="og:title" content="{{ config.title }}">
{% endif %}

{# Website description #}
{% if page.description %}
  <meta name="description" content="{{ page.description }}"/>
  <meta property="og:description" content="{{ page.description }}">
{% elif page.title %}
  <meta name="description" content="{{ page.title }}"/>
  <meta property="og:description" content="{{ page.title }}">
{% elif config.description %}
  <meta name="description" content="{{ config.description }}"/>
  <meta property="og:description" content="{{ config.description }}">
{% endif %}


{# Website keywords #}
{% if page.keywords %}
  <meta name="keywords" content="{{ page.keywords }}" />
{% elif page.tags and page.tags.length %}
  <meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }},{% endfor %}" />
{% endif %}
