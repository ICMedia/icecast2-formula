===============
iceast2-formula
===============

A formula for installing the audio streaming server Icecast2.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``icecast2``
------------

Meta-state that includes all the states in the correct order.

``icecast2.install``
-------------------

Installs the icecast2 server and starts the service.

``icecast2.config``
-------------------

Manages the icecast2 config.

``icecast2.service``
--------------------

Manages icecast2 startup and ensures that it is running.
