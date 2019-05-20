<script type="text/javascript" src="{{ url_for('js/src') }}/theme.js?v={{ theme.version }}"></script>
<script type="text/javascript" src="{{ url_for('js/src') }}/bootstrap.js?v={{ theme.version }}"></script>
<script type="text/javascript" src="{{ url_for('js/src') }}/highlight.pack.js?v={{ theme.version }}"></script>
<script>
hljs.initHighlightingOnLoad();
document.addEventListener('DOMContentLoaded', (event) => {
  document.querySelectorAll('td.code').forEach((block) => {
    hljs.highlightBlock(block);
  });
});
</script>