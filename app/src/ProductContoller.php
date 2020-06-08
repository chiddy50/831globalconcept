<?php

namespace {

    class ProductController extends PageController
    {
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }

        public function Items(){
            return ProductItem::get()
            ->filter([
                'ProductID' => $this->ID
            ]);
        }
    }
}
