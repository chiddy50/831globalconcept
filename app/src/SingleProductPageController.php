<?php

namespace {

    class SingleProductPageController extends PageController
    {
        /**
         * @var array
         */
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }

        public function sample(){
            $currentProduct = $this->ProductID;

            $product = Product::get()->filter([
                'ID' => $currentProduct
            ]);

            return $product;
        }

    }
}
