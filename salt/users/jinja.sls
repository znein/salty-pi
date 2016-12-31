# two loops, inner and outer loop
{% for user, userdata in salt['pillar.get']('userdata', {}).iteritems() %}
{{ user }}:
  user.present:
{% for key, value in userdata.iteritems() %}
    - {{ key }}: {{ value }}
{% endfor %}
{% endfor %}
