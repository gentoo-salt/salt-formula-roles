{% if grains['os'] == 'Gentoo' %}

include:
  - packages.salt
  - packages.vagrant

{% endif %}
