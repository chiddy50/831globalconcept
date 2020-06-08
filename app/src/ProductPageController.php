<?php

namespace {

    class ProductPageController extends PageController
    {
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }

        public function TrackersAndCctv(){

            return ProductItem::get()->filter('ProductID:not', 16);
        }

        public function cctv(){

            $products = ProductItem::get();
            $cctv = $products->filter([
                'ProductID' => 15
            ]);
            return $cctv;
        }

    }
}
