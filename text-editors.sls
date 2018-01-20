{% if grains['os'] == 'Gentoo' %}
{% if 'graphics' in grains['roles'] %}

include:
  - packages.vim
  - packages.atom

{% endif %}
{% endif %}
