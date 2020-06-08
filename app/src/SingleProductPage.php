<?php

namespace {
    use SilverStripe\Assets\Image;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Forms\TextareaField;

    class SingleProductPage extends Page
    {
        private static $db = [
            'Description' => 'Text',
            'Additional' => 'Text'
        ];
        private static $has_one = [
            'Photo' => Image::class,
        ];

        private static $can_be_root = false;

        public function getCMSFields()
        {
            $fields = parent::getCMSFields();

            $photo = UploadField::create('Photo');
            $photo->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg']);

            $fields->addFieldToTab('Root.Attachments', $photo);
            $fields->addFieldToTab('Root.Main', TextareaField::create('Description'),'Content');
            $fields->addFieldToTab('Root.Main', TextareaField::create('Additional'),'Content');
            return $fields;
        }

    }
}
