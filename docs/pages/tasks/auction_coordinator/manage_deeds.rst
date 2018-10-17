.. _auction_coordinator_manage_deeds:

.. index:: Deeds

============
Deeds
============

-------------------------------
View all deeds
-------------------------------

*Description:*  The auction coordinator is able to view all deeds that have been created within the the County Portal.

*Steps to complete activity:*

#. Under the "Site administration" section of the County Portal click on "Deeds"

   .. image:: /images/tasks_manage_deeds_view_deeds.png

#. View the summary list of available deeds is displayed.

   .. image:: /images/tasks_manage_deeds_view_deeds_list.png

-------------------------------
Create deed
-------------------------------

*Description:*  The auction coordinator is able to create a new deed for a given parcel.

*Steps to complete activity:*

#. On the "Site administration" screen of the County Portal click on "Parcels"

   .. image:: /images/tasks_manage_deeds_create_deed.png

#. When presented with summary list of parcels, check the box beside the parcel for which you're creating a deed.

#. Under the "Action" drop down, select the type of deed to be created.

   .. image:: /images/tasks_manage_deeds_create_deed_action.png

#. After clicking "Go", a page will be displayed requesting all data required to complete the deed type requested.  Defaults will be provided for specific fields.  None of the fields are required at this point so click "Save" once all presently known data has been provided.  Nothing will be finalized at this point.

   .. image:: /images/tasks_manage_deeds_create_deed_form.png

.. _update-deeds-label:

-------------------------------
Update deed
-------------------------------

*Description:*  The auction coordinator is able to modify all deeds prior to their recording.

*Steps to complete activity:*

#. Under the "Site administration" section of the County Portal click on "Deeds"

   .. image:: /images/tasks_manage_deeds_view_deeds.png

#. When presented with the list of deeds, check the box beside the deed you would like to update

#. Use the "Action" drop down to select "Updated selected deed's attributes".  Click "Go".

   .. image:: /images/tasks_manage_deeds_update_deeds_action.png

#. After clicking "Go", a page will be displayed with all required data for the deed selected.  Previously entered data can be updated or the entire deed can be voided.

   .. image:: /images/tasks_manage_deeds_update_deeds_form.png

#. Along the bottom of the page are buttons controlling what is done with the updates provided:

   .. image:: /images/tasks_manage_deeds_update_deeds_buttons.png

   .. index:: Void deed
   .. index:: Update
   .. index:: Preview
   .. index:: Commit

   * **"Void deed"** marks this deed as being permanently invalid and not to be recorded.
   * **"Update"** saves changes to be completed later
   * **"Preview"** saves changes and generates the deed PDF for viewing.
   * **"COMMIT"** saves changes and records on blockchain.  A PDF file is generated that if submitted to the Recorder's office, is the official public record of the conveyance.

-------------------------------
Print final deed
-------------------------------

.. index:: commit
.. index:: final
.. index:: Print deed

*Description:*  Once satisfied with the state of a deed, the auction coordinator is able to generate a final PDF to be delivered to the Recorder's office.

*Steps to complete activity:*

#. Folow instructions under :ref:`update-deeds-label` section of this document

#. Click on the **"COMMIT"** button to generate and download the deed in PDF format.

   .. image:: /images/tasks_manage_deeds_print_deeds_form.png

#. Click on the downloaded PDF to cause the file to open in the PDF viewer configured on your system.  By default the Chrome browser will open the PDF directly itself:

   .. image:: /images/tasks_manage_deeds_print_deeds_pdf.png

#. From this point normal print options should be available.

-------------------------------
Void deed
-------------------------------

*Description:*  The coordinator is able to update a deed and flag it as void.  If needed, this ensures there is a record of the deed having been started but that it will not be a part of public record.

*Steps to complete activity:*

#. Follow instructions under :ref:`update-deeds-label` section of this document.

#. Clicking the **"Void deed"** button will cause the deed to be flagged and not eligible for completion.

   .. index:: Void deed

