<ul class="category-list">
{% for item in site.categories.data %}
    <li>
    {% if page.path.substr(0, page.path.indexOf('/')) == config.category_map[item.name] %}
        <a href="/{{ config.category_map[item.name] }}" class="on" >{{ item.name }}</a>
    {% else %}
        <a href="/{{ config.category_map[item.name] }}">{{ item.name }}</a>
    {% endif %}
    </li>
{% endfor %}
</ul>
