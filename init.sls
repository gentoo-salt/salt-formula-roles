{% if grains['os'] == 'Gentoo' %}

from jinja2 import Environment

{% set roles = salt['grains.get']('roles', '') %}

{% if roles %}
include: > [ {% for role in roles %}roles.{{role}}{% if not loop.last %},{% endif %}{% endfor %} ]
{% endif %}

{% endif %}
