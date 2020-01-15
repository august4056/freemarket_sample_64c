$(document).on('turbolinks:load', function() {
  console.log(1)
  var form = $("#charge-form");
  Payjp.setPublicKey("pk_test_be40fbe98c439737c85c3f9f"); //(自身の公開鍵)

  $("#charge-form").on("click", "#token_submit", function(e) {
    e.preventDefault();
    form.find("input[type=submit]").prop("disabled", true);
    var card = {
        number: parseInt($("#card_number").val()),
        cvc: parseInt($("#cvc").val()),
        exp_month: parseInt($("#card_exp_month").val()),
        exp_year: parseInt($("#card_exp_year").val())
    };
    Payjp.createToken(card, function(status, response) {
      console.log(response)
      if (status == 200) {
        $("#card_number").removeAttr("name");
        $("#cvc").removeAttr("name");
        $("#card_exp_month").removeAttr("name");
        $("#card_exp_year").removeAttr("name");

        var token = response.id;
        $("#charge-form").append($('<input type="hidden" name="payjp_token" class="payjp-token" />').val(token));
        $("#charge-form").get(0).submit();

      }
      else {
        alert("error")
        form.find('button').prop('disabled', false);
      }
    });
  });
});