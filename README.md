# dsi-yum-cookbook

Ce cookbook installe et configure les dépôts internes YUM pour
l'ensemble des distributions basés sur Redhat.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['dsi-yum']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### dsi-yum::default

Include `dsi-yum` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[dsi-yum::default]"
  ]
}
```

## License and Authors

Author:: Leonard TAVAE (<leonard.tavae@informatique.gov.pf>)
