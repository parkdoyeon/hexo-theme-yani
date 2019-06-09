<script src="{{ url_for('js/src') }}/theme.js?v={{ theme.version }}"></script>
<script src="{{ url_for('js/src') }}/bootstrap.js?v={{ theme.version }}"></script>

{% if config.math %}
    <script src="//cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML"></script>
{% endif %}

<script src="{{ url_for('js/src') }}/highlight.pack.js?v={{ theme.version }}"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/highlightjs-line-numbers.js/2.7.0/highlightjs-line-numbers.min.js"></script>
<script>
document.addEventListener('DOMContentLoaded', (event) => {
  document.querySelectorAll('figure.highlight').forEach((block) => {
    hljs.highlightBlock(block);
  });
});
hljs.initHighlightingOnLoad();
hljs.initLineNumbersOnLoad();
</script>