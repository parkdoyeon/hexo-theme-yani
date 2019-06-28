{{ list_categories({style: 'list', separator: '', depth: 0, show_count: false}) }}
{% for item in config.category_map %}
<div id="post-categories">
    <ul class="category-list">
        <li>
            <a href="{{ item }}">{{ config.category_map.getOwnPropertyNames(item) }}</a>
        </li>
    </ul>
</div>
{% endfor %}