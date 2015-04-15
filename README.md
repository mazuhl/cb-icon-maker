# cp-icon-maker
Icon maker for MODx Content Blocks Extra

Short shell script to icons similar to those used by [ModMore's Content Blocks plugin](https://www.modmore.com/extras/contentblocks/). Great to quickly generate icons for Fields, Layouts and Templates from thousands of free icon images.

## Usage

1. Clone the repo.
2. Get some icon files in PNG format from FontAwesome, FlatIcon, etc. > 200px works best.
3. Drop your icons into /images
4. Run ./cb-icon-maker.sh
5. If you want 2x2 icons, add the `--multi` option.
6. Upload your icons into the `/assets/components/contentblocks/img/icons/`

## Short version

```sh
$ cd cb-icon-maker
$ ./cb-icon-maker.sh
```

Then look at your new icons in images. Remember to run all the output icons through a lossless PNG compressor.
