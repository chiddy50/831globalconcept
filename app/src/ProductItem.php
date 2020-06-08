<?php

namespace {
    use SilverStripe\ORM\DataObject;
    use SilverStripe\Forms\FieldList;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Forms\TextareaField;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Assets\Image;
    use SilverStripe\Versioned\Versioned;

    class ProductItem extends DataObject
    {
        private static $db = [
            'Name' => 'Varchar',
            'Description' => 'Text'
        ];

        private static $has_one = [
            'Photo' => Image::class,
            'Product' => Product::class
        ];

        private static $has_many = [

        ];

        private static $extensions = [
            Versioned::class,
        ];

        private static $summary_fields = [
            'GridThumbnail' => 'getGridThumbnail',
            'Name' => 'Name of Item',
        ];

        public function getGridThumbnail()
        {
            if ($this->Photo()->exists()) {
                return $this->Photo()->ScaleWidth(100);
            }

            return '(no image)';
        }

        public function getCMSFields()
        {
            $fields = FieldList::create(
                TextField::create('Name'),
                TextareaField::create('Description'),
                $uploader = UploadField::create('Photo')
            );

            $uploader->setFolderName('product-photos');
            $uploader->getValidator()->setAllowedExtensions([
                'png', 'gif', 'jpeg', 'jpg'
            ]);

            return $fields;
        }
    }
}


