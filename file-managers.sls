{% if grains['os'] == 'Gentoo' %}

include:
  - packages.mc

{% endif %}
