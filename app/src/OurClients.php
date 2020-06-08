<?php

namespace {
    use SilverStripe\ORM\DataObject;
    use SilverStripe\Forms\FieldList;
    use SilverStripe\Forms\TextField;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Assets\Image;

    class OurClients extends DataObject
    {
        private static $db =
        [
            'Name' => 'Varchar',
        ];

        private static $has_one =
        [
            'Photo' => Image::class,
            'HomePage' => HomePage::class
        ];

        private static $summary_fields = [
            'GridThumbnail' => 'getGridThumbnail',
            'Name' => 'Name of Client',
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


