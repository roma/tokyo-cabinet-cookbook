# tokyo-cabinet-cookbook

Install Tokyo Cabinet with Chef.

## Supported Platforms

The following platforms are supported:
* centos
* ubuntu

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['tokyo-cabinet']['target_dir']</tt></td>
    <td>String</td>
    <td>Target directory of Tokyo Cabinet</td>
    <td><tt>/usr/local/</tt></td>
  </tr>
  <tr>
  <td><tt>['tokyo-cabinet']['version']</tt></td>
  <td>String</td>
  <td>Version info</td>
  <td><tt>1.4.48</tt></td>
  </tr>
  <tr>
  <td><tt>['tokyo-cabinet']['source_uri']</tt></td>
  <td>String</td>
  <td>Source info</td>
  <td><tt>http://fallabs.com/tokyocabinet/tokyocabinet-1.4.48.tar.gz</tt></td>
  </tr>
  <tr>
  <td><tt>['tokyo-cabinet']['configure_option']</tt></td>
  <td>String</td>
  <td>configure option</td>
  <td><tt>--prefix=/usr/local/libexec</tt></td>
  </tr>
</table>

## Usage

### tokyo-cabinet::default

Include `tokyo-cabinet` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[tokyo-cabinet::default]"
  ]
}
```

## Authors

Author:: Rui Bando (bando.rui@gmail.com)
