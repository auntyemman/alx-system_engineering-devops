# Description of Puppet as Configuration Mananger

Manages files, including their content, ownership, and permissions.

The file type can manage normal files, directories, and symlinks; the type should be specified in the ensure attribute.

File contents can be managed directly with the content attribute, or downloaded from a remote source using the source attribute; the latter can also be used to recursively serve directories (when the recurse attribute is set to true or local). On Windows, note that file contents are managed in binary mode; Puppet never automatically translates line endings.

Autorequires: If Puppet is managing the user or group that owns a file, the file resource will autorequire them. If Puppet is managing any parent directories of a file, the file resource will autorequire them.

Warning: Enabling recurse on directories containing large numbers of files slows agent runs. To manage file attributes for many files, consider using alternative methods such as the chmod_r, chown_r, or recursive_file_permissions modules from the Forge.

# Attributes
```
file { 'resource title':

  path                    => # (namevar) The path to the file to manage.  Must be fully...

  ensure                  => # Whether the file should exist, and if so what...

  backup                  => # Whether (and how) file content should be backed...
}
```
