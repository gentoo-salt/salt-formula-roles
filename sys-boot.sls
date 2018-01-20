{% if grains['os'] == 'Gentoo' %}

include:
  - packages.unetbootin

{% endif %}
