{% if config.disqus_shortname %}
<script type="text/javascript">
  var disqus_shortname = '{{config.disqus_shortname}}';
  var disqus_identifier = '{{ page.path }}';
  var disqus_url = '{{ url }}';

  {% if page.comments %}
  var disqus_config = function () {
      this.page.url = disqus_url;
      this.page.identifier = disqus_identifier;
  };
  
  (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://' + disqus_shortname + '.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
  })();
  {% endif %}
  
  // var disqus = {
  //   load : function disqus(){
  //       if(typeof DISQUS !== 'object') {
  //         (function () {
  //         var s = document.createElement('script'); s.async = true;
  //         s.type = 'text/javascript';
  //         s.src = '//' + disqus_shortname + '.disqus.com/embed.js';
  //         (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
  //         }());
  //         $('#load-disqus').remove(); ///Delete Button
  //       }
  //   }
  // }

</script>
{% endif %}
