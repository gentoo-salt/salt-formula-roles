{% if grains['os'] == 'Gentoo' %}

include:
  - packages.libreoffice

{% endif %}
