{% set user = salt['pillar.get']('users:primary-user') %}
{% from "app/android-sdk/map.jinja" import android with context %}

Install Android build tools:
  cmd.run:
    - name: yes | {{ android.sdkPath }}/tools/bin/sdkmanager "build-tools;27.0.1"
    - runas: {{ user }}
    - creates: {{ android.sdkPath }}/build-tools/27.0.1