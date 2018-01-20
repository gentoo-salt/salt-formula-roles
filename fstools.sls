{% if grains['os'] == 'Gentoo' %}

include:
  - packages.gptfdisk
  - packages.gparted
  - packages.testdisk

{% endif %}
