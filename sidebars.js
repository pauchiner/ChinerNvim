const sidebars = {
  packages: [
    {
      type: "doc",
      id: 'getting-started',
      label: "Getting Started",
    },
    {
      type: "category",
      label: "Documentation",
      items: [
        "documentation/keybindings",
        "documentation/startup-screen",
        "documentation/color-schemes",
        "documentation/prettier",
        "documentation/git-integration",
        "documentation/lsp-configuration",
      ],
    },
    {
      type: "doc",
      id: 'credits',
      label: "Credits",
    },
  ]
};

module.exports = sidebars;
