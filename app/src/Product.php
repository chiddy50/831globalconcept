<?php

namespace {
    use SilverStripe\Forms\TextareaField;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Assets\Image;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Forms\GridField\GridField;
    use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

class Product extends Page{
        private static $can_be_root = false;

        private static $db = [
            'Name' => 'Varchar',
            'Description' => 'Text'
        ];

        private static $has_one = [
            'Photo' => Image::class,
        ];

        private static $allowed_children = [
            'SingleProductPage'
        ];


        private static $many_many = [

        ];

        private static $has_many = [
            'ProductItem' => ProductItem::class,
        ];



        public function getCMSFields()
        {
            $fields = parent::getCMSFields();

            $photo = UploadField::create('Photo');
            $photo->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg']);

            $fields->addFieldToTab('Root.Main', TextField::create('Name'),'Content');
            $fields->addFieldToTab('Root.Main', TextareaField::create('Description'),'Content');
            $fields->addFieldToTab('Root.Attachments', $photo);
            $fields->addFieldToTab('Root.Types', GridField::create(
                'ProductItem',
                'Product Type',
                $this->ProductItem(),
                GridFieldConfig_RecordEditor::create()
            ));

            return $fields;
        }

    }
}
