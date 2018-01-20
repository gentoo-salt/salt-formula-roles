{% if grains['os'] == 'Gentoo' %}

include:
  - packages.firefox
  - packages.chrome
  - packages.vivaldi
  - packages.chromium

{% endif %}
