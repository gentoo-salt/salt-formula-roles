{% if grains['os'] == 'Gentoo' %}

include:
  - packages.gcc
  - packages.glibc
  - packages.openrc
  - packages.portage

{% endif %}
