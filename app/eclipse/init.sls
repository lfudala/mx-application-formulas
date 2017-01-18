Caskroom/cask/eclipse-jee:
  pkg.installed

install Eclipse Ivy plugin:
  cmd.run:
    - name: /Applications/Eclipse.app/Contents/MacOS/eclipse -clean -purgeHistory -application org.eclipse.equinox.p2.director -noSplash -repository http://www.apache.org/dist/ant/ivyde/updatesite -installIU "org.apache.ivy"
    - unless: find /Applications/Eclipse.app/Contents/Eclipse/ -name "org.apache.ivy_*"

install Eclipse IvyDE plugin:
  cmd.run:
    - name: /Applications/Eclipse.app/Contents/MacOS/eclipse -clean -purgeHistory -application org.eclipse.equinox.p2.director -noSplash -repository http://www.apache.org/dist/ant/ivyde/updatesite -installIU "org.apache.ivyde.eclipse"
    - unless: find /Applications/Eclipse.app/Contents/Eclipse/ -name "org.apache.ivyde.eclipse_*"

install Eclipse Class Decompiler Core:
  cmd.run:
    - name: /Applications/Eclipse.app/Contents/MacOS/eclipse -clean -purgeHistory -application org.eclipse.equinox.p2.director -noSplash -repository http://opensource.cpupk.com/decompiler/update -installIU "org.sf.feeling.decompiler.feature.group"
    - unless: find /Applications/Eclipse.app/Contents/Eclipse/ -name "org.sf.feeling.decompiler_*"

Clean up lockfiles which will be owned by root:
  cmd.run:
    - name: chmod -R g+w /Applications/Eclipse.app/Contents/Eclipse/configuration/org.eclipse.osgi/