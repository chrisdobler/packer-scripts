module.exports = {
  communicators: {
    ssh: {
      communicator: 'ssh',
      ssh_username: '{{user `ssh_username`}}',
      // ssh_private_key_file: '{{user `ssh_private_key_file`}}',
      ssh_password: '{{user `ssh_password`}}',
    },

    winRM: {
      communicator: 'winrm',
      winrm_username: '{{user `winrm_username`}}',
      winrm_password: '{{user `winrm_password`}}',
    },
  }
  fusionClone: ({ vm_name, path }) => ({
    type: 'vmware-vmx',
    source_path: `${path}${vm_name}/${vm_name}.vmx`,
  }),
};
