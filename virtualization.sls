{% if grains['os'] == 'Gentoo' %}

include:
  - packages.docker
  - packages.virtualbox

{% endif %}
