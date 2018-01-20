roles
======================

(Gentoo Linux only)
This folder includes salt states which can be enabled as grain 'roles' in the minion config.
Grain 'roles' can be enabled in the minion config file '/etc/salt/minion' as follows:
grains:
  roles:
    - graphics
    - multimedia

Example of top.sls configuration which enables these roles on the minions:
----------------------
{% set packages = salt['grains.get']('packages', '') %}
{% set roles = salt['grains.get']('roles', '') %}

base:
{% if packages %}
{% for pkg in packages %}
  'packages:{{ pkg }}':
    - match: grain
    - packages.{{ pkg }}
{% endfor %}
{% endif %}
{% if roles %}
{% for role in roles %}
  'roles:{{ role }}':
    - match: grain
    - roles.{{ role }}
{% endfor %}
{% endif %}
----------------------


Available states
======================
``roles.init``
----------------------
Applies all roles which are defined in the grains
----------------------

``roles.cryptocurrencies``
----------------------
Includes the following salt states (packages):
  - packages.bitcoin-qt
  - packages.dash-core
  - packages.electrum
  - packages.electrum-ltc
  - packages.go-ethereum
  - packages.litecoin-qt
  - packages.monero
  - packages.monero-gui
----------------------

``roles.file-managers``
----------------------
Includes the following salt states (packages):
  - packages.mc
----------------------

``roles.fstools``
----------------------
Includes the following salt states (packages):
  - packages.gptfdisk
  - packages.gparted
  - packages.testdisk
----------------------

``roles.graphics``
----------------------
Includes the following salt states (packages):
  - packages.inkscape
  - packages.gwenview
  - packages.mupdf
----------------------

``roles.multimedia``
----------------------
Includes the following salt states (packages):
  - packages.vlc
  - packages.xine
  - packages.amarok
  - packages.kodi
----------------------

Documentation
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

License
======================
Apache-2.0 (please view attached LICENSE file for complete details)
